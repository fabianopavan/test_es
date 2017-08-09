# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170808153100) do

  create_table "pagamenti__applicazione", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "nome"
    t.string "codice"
    t.integer "codice_calcolo_iuv"
    t.boolean "iuv_da_flusso"
  end

  create_table "pagamenti__camposcelta", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "valore"
    t.integer "tipologia_campo_scelta_id"
  end

  create_table "pagamenti__canalepsp", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "psp_id_psp"
    t.string "identificativo_intermediario"
    t.string "identificativo_canale"
    t.string "tipo_versamento"
    t.string "modello_pagamento"
    t.integer "priorita"
    t.text "disponibilita_servizio"
    t.text "descrizione_servizio"
    t.string "condizioni_economiche_massime"
    t.string "url_informazioni_canale"
  end

  create_table "pagamenti__datiente", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "nome_ente"
    t.string "id_ente"
    t.string "iban_ente"
    t.string "tipo_id_ente_id"
    t.string "indirizzo_ente"
    t.string "civico_ente"
    t.string "cap_ente"
    t.string "localita_ente"
    t.string "provincia_ente"
    t.string "nazione_ente"
    t.string "gln"
  end

  create_table "pagamenti__datoapplicazione", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "chiave"
    t.string "tipo_elemento"
    t.string "id_elemento"
    t.integer "importo"
  end

  create_table "pagamenti__dovuto", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "importo"
    t.string "nome"
    t.string "cognome"
    t.text "causale"
    t.string "email"
    t.integer "tipo_dovuto_id"
    t.text "valori_campi_custom"
    t.string "id_elemento"
    t.string "via_residenza"
    t.string "cap_residenza"
    t.string "comune_residenza"
    t.string "codice_fiscale"
    t.string "nome_pagatore"
    t.string "cognome_pagatore"
    t.string "via_residenza_pagatore"
    t.string "civico_residenza_pagatore"
    t.string "cap_residenza_pagatore"
    t.string "prov_residenza_pagatore"
    t.string "comune_residenza_pagatore"
    t.string "nazione_residenza_pagatore"
    t.string "codice_fiscale_pagatore"
    t.string "email_pagatore"
    t.string "civico_residenza"
    t.string "prov_residenza"
    t.string "nazione_residenza"
    t.date "data_scadenza"
  end

  create_table "pagamenti__erogazioneservizio", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "modalita_pagamento_id"
    t.integer "disponibilita_da_id"
    t.integer "disponibilita_a_id"
    t.time "fascia_oraria_da"
    t.time "fascia_oraria_a"
    t.integer "dati_ente_id"
  end

  create_table "pagamenti__flussopagamenti", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.integer "tipo_dovuto_id"
    t.decimal "importo_totale", precision: 65, scale: 2
    t.string "stato_id"
    t.string "logfile"
    t.string "nome_flusso"
    t.date "data"
    t.integer "totale_posizioni"
    t.string "csv_errori"
    t.string "csv_corretti"
    t.string "zip_avvisi"
  end

  create_table "pagamenti__flussoquadratura", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "id_flusso"
    t.datetime "data_ora_flusso"
    t.datetime "data_inizio_periodo"
    t.datetime "data_fine_periodo"
  end

  create_table "pagamenti__flussoriversamento", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "id_flusso"
    t.datetime "data_ora_flusso"
    t.string "id_univoco_regolamento"
    t.date "data_regolamento"
    t.string "istituto_mittente"
    t.string "codice_bic_banca_riversamento_id_psp"
    t.integer "numero_totale_pagamenti"
    t.decimal "importo_totale_pagamenti", precision: 65, scale: 2
  end

  create_table "pagamenti__giornaleeventi", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.datetime "dataOraEvento"
    t.string "identificativoDominio"
    t.string "identificativoUnivocoVersamento"
    t.string "codiceContestoPagamento"
    t.string "identificativoPrestatoreServiziPagamento"
    t.string "tipoVersamento"
    t.string "componente_id"
    t.string "categoriaEvento_id"
    t.string "tipoEvento"
    t.string "sottoTipoEvento"
    t.string "identificativoFruitore"
    t.string "identificativoErogatore"
    t.string "identificativoStazioneIntermediarioPA"
    t.string "canalePagamento"
    t.text "parametriSpecificiInterfaccia"
    t.string "esito"
  end

  create_table "pagamenti__intermediariopa", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "identificativo_intermediario", limit: 35
    t.string "identificativo_stazione_intermediario", limit: 35
  end

  create_table "pagamenti__intestazionecarrelloppt", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "identificativo_intermediario", limit: 35
    t.string "identificativo_stazione_intermediario", limit: 35
    t.string "identificativo_carrello", limit: 35
  end

  create_table "pagamenti__intestazioneppt", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "identificativo_intermediario", limit: 35
    t.string "identificativo_stazione_intermediario", limit: 35
    t.string "identificativo_dominio", limit: 35
    t.string "identificativo_univoco_versamento", limit: 35
    t.string "codice_contesto_pagamento", limit: 35
  end

  create_table "pagamenti__inviarptdopoattiva", primary_key: "[\"iuv\", \"codiceContestoPagamento\"]", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "iuv", default: "", null: false
    t.string "codiceContestoPagamento", default: "", null: false
    t.text "params_intestazione_ppt"
    t.text "params_attiva_rpt"
    t.string "id_dominio"
    t.string "id_pagamenti"
    t.boolean "executed"
    t.boolean "error"
  end

  create_table "pagamenti__pagamento", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.integer "utente_id"
    t.text "descrizione"
    t.integer "importo"
    t.string "codice_applicazione"
    t.string "tipo_elemento"
    t.string "id_elemento"
    t.string "chiave"
    t.string "stato_id"
    t.string "id_dominio"
    t.string "tipo_pagamento_id"
    t.integer "idx_rpt"
    t.string "codice_contesto_pagamento"
    t.string "iur"
    t.string "stato_rt"
    t.decimal "importo_versato_rt", precision: 65, scale: 2
    t.date "data_pagamento"
    t.decimal "commissioni_psp", precision: 65, scale: 2
    t.string "iuv"
    t.integer "versante_id"
    t.integer "pagatore_id"
    t.integer "dovuto_id"
    t.string "psp_id_psp"
    t.string "tipo_versamento"
    t.integer "flusso_backend_id"
    t.integer "riversamento_idx_rpt"
    t.integer "riversamento_flusso_id"
    t.integer "riversamento_codice_esito_pagamento_id"
    t.decimal "riversamento_importo", precision: 65, scale: 2
    t.date "riversamento_data_esito_pagamento"
    t.boolean "cancellabile"
    t.string "accertamento"
    t.string "barcode"
    t.string "qrcode"
    t.string "provacampo"
    t.index ["iuv"], name: "iuv_idx"
  end

  create_table "pagamenti__psp", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "id_psp"
    t.string "ragione_sociale"
    t.string "url_informazioni_psp"
    t.boolean "storno_pagamento"
    t.boolean "marca_bollo_digitale"
    t.datetime "data_pubblicazione"
    t.datetime "data_inizio_valid"
  end

  create_table "pagamenti__quadraturarpt", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "id_psp"
    t.string "totali_attesa_importi"
    t.integer "totali_attesa_oggetti"
    t.string "totali_consegnate_importi"
    t.string "totali_consegnate_oggetti"
    t.string "flusso_id_flusso"
  end

  create_table "pagamenti__quadraturart", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "id_psp"
    t.string "totali_attesa_importi"
    t.integer "totali_attesa_oggetti"
    t.string "totali_consegnate_importi"
    t.string "totali_consegnate_oggetti"
    t.string "flusso_id_flusso"
  end

  create_table "pagamenti__riversamentopagamentoscartato", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "iuv"
    t.string "iur"
    t.string "id_psp"
    t.integer "riversamento_idx_rpt"
    t.integer "riversamento_flusso_id"
    t.integer "riversamento_codice_esito_pagamento_id"
    t.decimal "riversamento_importo", precision: 65, scale: 2
    t.date "riversamento_data_esito_pagamento"
    t.index ["iuv"], name: "iuv_idx"
  end

  create_table "pagamenti__tipodovuto", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "titolo"
    t.text "descrizione"
    t.text "campi"
    t.string "modalita_pagamento_id"
    t.boolean "attivo"
    t.date "data_inizio"
    t.date "data_fine"
    t.string "accertamento"
    t.string "iban_accredito"
    t.string "tipo_elemento"
    t.integer "applicazione_id"
    t.string "codice_segregazione"
    t.boolean "importazione_parziale"
    t.string "intestazione_poste"
    t.string "aut_stampa_numero"
    t.string "aut_stampa_data"
    t.integer "settore_id"
  end

  create_table "pagamenti__tipologiacamposcelta", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.string "nome"
  end

  create_table "pagamenti__traccia", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.integer "utente_id"
    t.string "ip"
    t.string "pagina"
    t.text "parametri"
    t.string "id_transazione_app"
    t.string "tipologia_servizio"
    t.string "tipologia_richiesta"
  end

  create_table "pagamenti__transazione", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.datetime "obj_created"
    t.datetime "obj_modified"
    t.integer "utente_id"
    t.integer "importo_totale"
    t.string "stato_id"
    t.string "processor"
    t.date "data_pagamento"
    t.string "istituto_riferimento"
    t.string "numero_riferimento"
    t.decimal "importo_totale_versato", precision: 65, scale: 2
    t.string "esito_rt_id"
    t.integer "versante_id"
    t.string "iuv"
    t.string "codice_contesto_pagamento"
    t.string "id_session_psp"
    t.text "rpt"
    t.text "rt"
  end

  create_table "pagamenti__transazione__pagamenti", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "id"
    t.integer "transazione_id"
    t.integer "pagamento_id"
    t.string "pagamento_stato_storico_id"
    t.string "pagamento_stato_rt_storico"
  end

end
