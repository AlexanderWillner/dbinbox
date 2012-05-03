$ ->
  $('#upload').fileupload({
    dataType: 'json',
    autoUpload: true,
    uploadTemplateId: null,
    downloadTemplateId: null,
    uploadTemplate: (o) ->
      rows = $()
      $.each o.files, (index, file) ->
        console.log("filename = " + file.name)
        console.log("size = " + o.formatFileSize(file.size))
        row = $(
          "<tr class=\"template-upload fade\">" +
          "<td class=\"preview\"><span class=\"fade\"></span></td>" +
          "<td class=\"name\"><span></span></td>" +
          "<td class=\"size\"><span></span></td>" +
          "</tr>"
        )

        row.find('.name').text(file.name)
        row.find('.size').text(o.formatFileSize(file.size))
        row.find('.error').text(locale.fileupload.errors[file.error] || file.error) if file.error
        console.log "done"
        rows = rows.add(row)
      console.log rows
      rows
    downloadTemplate: (o) ->
      console.log("downloadtemplateId()")
      rows = $()
      $.each o.files, (index, file) ->
        console.log("filename = " + file.name)
        console.log("size = " + o.formatFileSize(file.size))
        row = $(
          "<tr class=\"template-upload fade\">" +
          "<td class=\"preview\"><span class=\"fade\"></span></td>" +
          "<td class=\"name\"><span></span></td>" +
          "<td class=\"size\"><span></span></td>" +
          "</tr>"
        )

        row.find('.name').text(file.name)
        row.find('.size').text(o.formatFileSize(file.size))
        row.find('.error').text(locale.fileupload.errors[file.error] || file.error) if file.error
        console.log "done"
        rows = rows.add(row)
      console.log rows
      rows
    # done: (e,data) ->
    #   console.log e
    #   console.log data
    #   $.each data.result, (index, file) ->
    #     console.log file
    #     console.log file.pat`h
    #     $('<p/>').text(file.path).appendTo(document.body)
  })