function buildCommentBody(marker, previewUrl) {
  return `${marker}\n📘 mdBook preview for this PR:\n\n${previewUrl}`
}

async function commentPreviewUrl({ github, context, previewUrl }) {
  const marker = '<!-- mdbook-pr-preview -->'
  const body = buildCommentBody(marker, previewUrl)

  const { owner, repo } = context.repo
  const issue_number = context.issue.number

  const comments = await github.paginate(github.rest.issues.listComments, {
    owner,
    repo,
    issue_number,
    per_page: 100,
  })

  const existing = comments.find(
    (comment) => comment.user?.type === 'Bot' && comment.body?.includes(marker),
  )

  if (existing) {
    await github.rest.issues.updateComment({
      owner,
      repo,
      comment_id: existing.id,
      body,
    })
    return
  }

  await github.rest.issues.createComment({
    owner,
    repo,
    issue_number,
    body,
  })
}

module.exports = {
  commentPreviewUrl,
}
