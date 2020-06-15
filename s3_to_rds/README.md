# S3 から CloudTrail の log を取得して RDS にロードする

### plugin をインストールする

```bash
embulk gem install embulk-input-s3
embulk gem install embulk-output-postgresql
embulk gem install embulk-parser-jsonpath
```
