{cloneFragment} = Trix

Trix.registerElement "trix-toolbar",
  defaultCSS: """
    %t {
      display: block;
    }

    %t {
      white-space: nowrap;
    }

    %t .dialog {
      display: none;
    }

    %t .dialog.active {
      display: block;
    }

    %t .dialog input.validate:invalid {
      background-color: #ffdddd;
    }

    %t[native] {
      display: none;
    }
  """

  connectedCallback: ->
    if @innerHTML is ""
      @appendChild(cloneFragment(Trix.config.toolbar.content))
