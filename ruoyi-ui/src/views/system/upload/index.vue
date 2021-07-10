<template>
  <div>
    <el-form ref="elForm" :model="formData" :rules="rules" size="mini" label-width="100px">
      <el-form-item label="上传" prop="field102">
        <el-upload ref="field102" :file-list="field102fileList" :action="field102Action"
          :before-upload="field102BeforeUpload">
          <el-button size="small" type="primary" icon="el-icon-upload">点击上传</el-button>
        </el-upload>
      </el-form-item>
      <el-form-item size="large">
        <el-button type="primary" @click="submitForm">提交</el-button>
        <el-button @click="resetForm">重置</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
export default {
  name: "Upload",
  components: {},
  props: [],
  data() {
    return {
      formData: {
        field102: null,
      },
      rules: {},
      field102Action: 'https://jsonplaceholder.typicode.com/posts/',
      field102fileList: [],
    }
  },
  computed: {},
  watch: {},
  created() {},
  mounted() {},
  methods: {
    submitForm() {
      this.$refs['elForm'].validate(valid => {
        if (!valid) return
        // TODO 提交表单
      })
    },
    resetForm() {
      this.$refs['elForm'].resetFields()
    },
    field102BeforeUpload(file) {
      let isRightSize = file.size / 1024 / 1024 < 2
      if (!isRightSize) {
        this.$message.error('文件大小超过 2MB')
      }
      return isRightSize
    },
  }
}

</script>
<style>
.el-upload__tip {
  line-height: 1.2;
}

</style>
