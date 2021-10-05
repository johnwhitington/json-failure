let contents_of_file filename =
  let fh = open_in_bin filename in
    let s = Bytes.create (in_channel_length fh) in
      really_input fh s 0 (in_channel_length fh);
      close_in fh;
      Bytes.to_string s

let _ = Json.parse (contents_of_file "pdfhello.pdf.json")
