
echo "# Generated environment variables" > environment_variables.yml

# Lấy tất cả các biến môi trường đã định nghĩa trong GitHub Actions
env | grep -E "^[A-Za-z_][A-Za-z0-9_]*=" | while read -r line; do
  key=$(echo "$line" | cut -d= -f1)
  value=$(echo "$line" | cut -d= -f2-)
  echo "${key}: \"${value}\"" >> environment_variables.yml
done

echo "File environment_variables.yml đã được tạo."