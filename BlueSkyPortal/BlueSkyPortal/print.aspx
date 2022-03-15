<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>COVID-19 workplace screening</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link rel="icon" href="https://covid-19.ontario.ca/covid-19-cs-assets/favicon-32x32.png?v=95d5a2a6253850552d499cd53df6b4a2" type="image/png" />

    <style>
        html {
            font-family: Open Sans,Helvetica Neue,Helvetica,Arial,sans-serif;
            font-size: 1rem;
            color: #1a1a1a;
        }

        .header-on {
            background: #1a1a1a;
            color: #fff;
            height: 59.5px;
        }

            .header-on img {
                width: 110px;
                margin: 1rem 1rem 1rem 0;
            }

        .lan-fr {
            text-align: right;
            position: relative;
            padding-left: 1rem;
            padding-right: 1rem;
            box-sizing: border-box;
            font-family: Open Sans,Helvetica Neue,Helvetica,Arial,sans-serif;
            font-size: 1rem;
            margin-top: 20px
        }

        .txt1 {
            display: block;
            margin: 0px auto;
            padding: 1rem 3rem;
            font-style: normal;
            font-weight: bold;
            font-size: 1.125rem;
            line-height: 1.5;
            text-align: center;
            letter-spacing: 0.48px;
            color: white;
            font-family: Open Sans,Helvetica Neue,Helvetica,Arial,sans-serif;
            font-size: 1rem;
        }

        .check-mark {
            background-image: url(data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTQzIDExMyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyMy43NCAwLjAwODM4MzYyQzExOC44OSAwLjEzOTU5MSAxMTQuMjggMi4xNTEwNCAxMTAuODg1IDUuNjE3ODVMNDguMzYzIDY4LjEzOThMMzEuNjUxNCA1My40MTQ5QzI5LjgyNTIgNTEuNjYxNSAyNy42NjE5IDUwLjI5NzEgMjUuMjkyNyA0OS40MDQ2QzIyLjkyMzUgNDguNTEyIDIwLjM5NzggNDguMTA5OSAxNy44Njg1IDQ4LjIyMjVDMTUuMzM5MyA0OC4zMzUxIDEyLjg1OTIgNDguOTYwMSAxMC41Nzg3IDUwLjA1OTdDOC4yOTgxOSA1MS4xNTkyIDYuMjY0NjkgNTIuNzEwMiA0LjYwMTQ2IDU0LjYxODlDMi45MzgyMyA1Ni41Mjc3IDEuNjc5OTEgNTguNzU0NSAwLjkwMjc3NyA2MS4xNjRDMC4xMjU2NDEgNjMuNTczNSAtMC4xNTQxMjggNjYuMTE1NiAwLjA4MDQyOSA2OC42MzY0QzAuMzE0OTg2IDcxLjE1NzMgMS4wNTg5OCA3My42MDQzIDIuMjY3MzIgNzUuODI5QzMuNDc1NjcgNzguMDUzOCA1LjEyMzE4IDgwLjAxMDIgNy4xMTAwMiA4MS41NzkzTDM3LjAyNzIgMTA3Ljc1N0M0MC41OSAxMTAuODY3IDQ1LjE5OTEgMTEyLjUxMiA0OS45MjYzIDExMi4zNjFDNTQuNjUzNSAxMTIuMjA5IDU5LjE0NzYgMTEwLjI3MSA2Mi41MDM1IDEwNi45MzlMMTM3LjI5NiAzMi4xNDU3QzE0MC4wMDkgMjkuNTIzMyAxNDEuODY2IDI2LjE0MTUgMTQyLjYyMSAyMi40NDQ2QzE0My4zNzcgMTguNzQ3OCAxNDIuOTk2IDE0LjkwODcgMTQxLjUzIDExLjQzMkMxNDAuMDYzIDcuOTU1NCAxMzcuNTc5IDUuMDAzNzcgMTM0LjQwNCAyLjk2NDlDMTMxLjIyOSAwLjkyNjAzOCAxMjcuNTEyIC0wLjEwNDU2NyAxMjMuNzQgMC4wMDgzODM2MloiIGZpbGw9IndoaXRlIi8+Cjwvc3ZnPgo=);
            background-size: 100%;
            display: block;
            width: 120px;
            height: 94px;
            margin: 1.2rem auto 2rem;
            background-color: rgb(17, 136, 71);
        }

        .section-2 {
            background-color: rgb(17, 136, 71);
        }
        .section-3 {margin-top: 3rem;}
        .approval-txt {
            font-style: normal;
            font-weight: bold;
            font-size: 2.875rem;
            text-align: center;
            letter-spacing: 0.15rem;
            margin-bottom: 0px;
            padding: 0px 1rem;
            color: rgb(255, 255, 255);
        }

        .icon-1 {
            background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzQiIGhlaWdodD0iMzMiIHZpZXdCb3g9IjAgMCAzNCAzMyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguODgxMTMgMEM4LjQ3Mjg3IDAgOC4xNDIgMC4zMzA5MDkgOC4xNDIgMC43MzkxM1Y1LjI3Nzg1QzYuODczMzYgNS42MTAwOCA1LjkyNDYxIDYuNzYyNTIgNS45MjQ2MSA4LjEzMDQzQzUuOTI0NjEgOS43NTQ0OSA3LjI1NzA0IDExLjA4NyA4Ljg4MTEzIDExLjA4N0MxMC41MDUyIDExLjA4NyAxMS44Mzc3IDkuNzU0NDkgMTEuODM3NyA4LjEzMDQzQzExLjgzNzcgNi43NjI1MiAxMC44ODg5IDUuNjEwMDggOS42MjAyNiA1LjI3Nzg1VjAuNzM5MTNDOS42MjAyNiAwLjMzMDkwOSA5LjI4OTM1IDAgOC44ODExMyAwWk0yNS4xNDIgMEMyNC43MzM3IDAgMjQuNDAyOSAwLjMzMDkwOSAyNC40MDI5IDAuNzM5MTNWNS4yNzc4NUMyMy4xMzQyIDUuNjEwMDggMjIuMTg1NSA2Ljc2MjUyIDIyLjE4NTUgOC4xMzA0M0MyMi4xODU1IDkuNzU0NDkgMjMuNTE3OSAxMS4wODcgMjUuMTQyIDExLjA4N0MyNi43NjYxIDExLjA4NyAyOC4wOTg1IDkuNzU0NDkgMjguMDk4NSA4LjEzMDQzQzI4LjA5ODUgNi43NjI1MiAyNy4xNDk3IDUuNjEwMDggMjUuODgxMSA1LjI3Nzg1VjAuNzM5MTNDMjUuODgxMSAwLjMzMDkwOSAyNS41NTAyIDAgMjUuMTQyIDBaTTMuNzA3MjIgMi4yMTczOUMxLjY2NjgxIDIuMjE3MzkgMCAzLjg4NDE5IDAgNS45MjQ1OVYyOC44MTQ1QzAgMzAuODU0OSAxLjY2NjgxIDMyLjUyMTcgMy43MDcyMiAzMi41MjE3SDMwLjI5MjhDMzIuMzMzMiAzMi41MjE3IDM0IDMwLjg1NDkgMzQgMjguODE0NVY1LjkyNDU5QzM0IDMuODg0MTkgMzIuMzMzMiAyLjIxNzM5IDMwLjI5MjggMi4yMTczOUgyOC4wODdDMjcuNjk2NSAyLjIxMTg1IDI3LjMzNjMgMi41NjYgMjcuMzM2MyAyLjk1NjUyQzI3LjMzNjMgMy4zNDcwNCAyNy42OTY1IDMuNzAxMTYgMjguMDg3IDMuNjk1NjVIMzAuMjkyOEMzMS41Mzg0IDMuNjk1NjUgMzIuNTIxNyA0LjY3ODk3IDMyLjUyMTcgNS45MjQ1OVYxMi41NjUySDEuNDc4MjZWNS45MjQ1OUMxLjQ3ODI2IDQuNjc4OTcgMi40NjE1NiAzLjY5NTY1IDMuNzA3MjIgMy42OTU2NUg1LjkxMzA0QzYuMzAzNTMgMy43MDEyIDYuNjYzNzQgMy4zNDcwNCA2LjY2Mzc0IDIuOTU2NTJDNi42NjM3NCAyLjU2NiA2LjMwMzUzIDIuMjExODggNS45MTMwNCAyLjIxNzM5SDMuNzA3MjJaTTExLjgyNjEgMi4yMTczOUMxMS40MTc5IDIuMjE3MzkgMTEuMDg3IDIuNTQ4MyAxMS4wODcgMi45NTY1MkMxMS4wODcgMy4zNjQ3NCAxMS40MTc5IDMuNjk1NjUgMTEuODI2MSAzLjY5NTY1SDIyLjE3MzlDMjIuNTgyMSAzLjY5NTY1IDIyLjkxMyAzLjM2NDc0IDIyLjkxMyAyLjk1NjUyQzIyLjkxMyAyLjU0ODMgMjIuNTgyMSAyLjIxNzM5IDIyLjE3MzkgMi4yMTczOUgxMS44MjYxWk04Ljg4MTEzIDYuNjUyMTdDOS43MDYzIDYuNjUyMTcgMTAuMzU5NCA3LjMwNTIzIDEwLjM1OTQgOC4xMzA0M0MxMC4zNTk0IDguOTU1NiA5LjcwNjMgOS42MDg3IDguODgxMTMgOS42MDg3QzguMDU1OTcgOS42MDg3IDcuNDAyODcgOC45NTU2IDcuNDAyODcgOC4xMzA0M0M3LjQwMjg3IDcuMzA1MjMgOC4wNTU5NyA2LjY1MjE3IDguODgxMTMgNi42NTIxN1pNMjUuMTQyIDYuNjUyMTdDMjUuOTY3MiA2LjY1MjE3IDI2LjYyMDMgNy4zMDUyMyAyNi42MjAzIDguMTMwNDNDMjYuNjIwMyA4Ljk1NTYgMjUuOTY3MiA5LjYwODcgMjUuMTQyIDkuNjA4N0MyNC4zMTY4IDkuNjA4NyAyMy42NjM3IDguOTU1NiAyMy42NjM3IDguMTMwNDNDMjMuNjYzNyA3LjMwNTIzIDI0LjMxNjggNi42NTIxNyAyNS4xNDIgNi42NTIxN1pNMS40NzgyNiAxNC4wNDM1SDMyLjUyMTdWMjguODE0NUMzMi41MjE3IDMwLjA2MDIgMzEuNTM4NCAzMS4wNDM1IDMwLjI5MjggMzEuMDQzNUgzLjcwNzIyQzIuNDYxNTYgMzEuMDQzNSAxLjQ3ODI2IDMwLjA2MDIgMS40NzgyNiAyOC44MTQ1VjE0LjA0MzVaIiBmaWxsPSIjMzlCNTRBIi8+Cjwvc3ZnPgo=);
            background-size: 100%;
            display: inline-block;
            width: 2.38rem;
            height: 2.3rem;
        }

        .icon-2 {
            background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzciIGhlaWdodD0iMzciIHZpZXdCb3g9IjAgMCAzNyAzNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4LjUwMDEgMTIuNzU3NkMxOS41MDg1IDEyLjc1NzYgMjAuMzI1OSAxMS45NDAyIDIwLjMyNTkgMTAuOTMxOEMyMC4zMjU5IDkuOTIzNDUgMTkuNTA4NSA5LjEwNjAyIDE4LjUwMDEgOS4xMDYwMkMxNy40OTE3IDkuMTA2MDIgMTYuNjc0MyA5LjkyMzQ1IDE2LjY3NDMgMTAuOTMxOEMxNi42NzQzIDExLjk0MDIgMTcuNDkxNyAxMi43NTc2IDE4LjUwMDEgMTIuNzU3NloiIGZpbGw9IiMzOUI1NEEiLz4KPHBhdGggZD0iTTE4LjUgMS44NDk3NEMyNy42ODA1IDEuODQ5NzQgMzUuMTQ5NyA5LjMxOSAzNS4xNDk3IDE4LjQ5OTVDMzUuMTQ5NyAyNy42OCAyNy42ODA1IDM1LjE0OTIgMTguNSAzNS4xNDkyQzkuMzE5NTIgMzUuMTQ5MiAxLjg0OTc0IDI3LjY4MDUgMS44NDk3NCAxOC40OTk1QzEuODQ5NzQgOS4zMTg0OCA5LjMxOSAxLjg0OTc0IDE4LjUgMS44NDk3NFpNMTguNSAwQzguMjgyNjkgMCAwIDguMjgyNjkgMCAxOC41QzAgMjguNzE3MyA4LjI4MjY5IDM3IDE4LjUgMzdDMjguNzE3MyAzNyAzNyAyOC43MTczIDM3IDE4LjVDMzcgOC4yODI2OSAyOC43MTY4IDAgMTguNSAwWiIgZmlsbD0iIzM5QjU0QSIvPgo8cGF0aCBkPSJNMTkuNzk0OCAxNS4yNDczSDE3LjIwNTFWMjcuODkzNEgxOS43OTQ4VjE1LjI0NzNaIiBmaWxsPSIjMzlCNTRBIi8+Cjwvc3ZnPgo=);
            background-size: 100%;
            display: inline-block;
            width: 2.35rem;
            height: 2.35rem;
        }

        .icon-3 {
            background-image: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDIzLjAuNiwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIKCSBpZD0iTGF5ZXJfMSIgeG1sbnM6Y2M9Imh0dHA6Ly9jcmVhdGl2ZWNvbW1vbnMub3JnL25zIyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczppbmtzY2FwZT0iaHR0cDovL3d3dy5pbmtzY2FwZS5vcmcvbmFtZXNwYWNlcy9pbmtzY2FwZSIgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIiB4bWxuczpzb2RpcG9kaT0iaHR0cDovL3NvZGlwb2RpLnNvdXJjZWZvcmdlLm5ldC9EVEQvc29kaXBvZGktMC5kdGQiIHhtbG5zOnN2Zz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCgkgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA2NCA4MCIKCSBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA2NCA4MDsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPgoJLnN0MHtmaWxsOiMwMDhBMjk7fQo8L3N0eWxlPgo8Zz4KCTxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik0xMy40LDE2LjFjLTEuMiwwLTIuMywwLjctMywxLjZzLTEuMSwyLjItMS4xLDMuNXYyMS43YzAsMS4yLDAuMiwyLjMsMC45LDMuMWMwLjcsMC44LDEuNiwxLjQsMi45LDEuOQoJCWMwLDAsMCwwLDAuMSwwYzAsMCwzLjEsMSw3LDIuMVMyOC42LDUyLDMyLDUyYzMuNCwwLDgtMSwxMS45LTIuMXM3LTIuMSw3LTIuMWMwLDAsMCwwLDAuMSwwYzEuMi0wLjUsMi4yLTEsMi44LTEuOQoJCWMwLjctMC44LDAuOS0xLjksMC45LTMuMVYyMS4xYzAtMS4zLTAuNC0yLjYtMS4xLTMuNWMtMC43LTEtMS44LTEuNi0zLjEtMS41YzAsMCwwLDAsMCwwYzAsMC0xMi41LDEuNC0xOC41LDEuNAoJCWMtNi4xLDAtMTguNS0xLjQtMTguNS0xLjRDMTMuNCwxNi4xLDEzLjQsMTYuMSwxMy40LDE2LjFMMTMuNCwxNi4xeiBNNTAuNywxOGMwLjUsMCwwLjksMC4yLDEuMywwLjdjMC40LDAuNiwwLjcsMS40LDAuNywyLjN2MjEuNwoJCWMwLDEtMC4yLDEuNS0wLjUsMS45Yy0wLjMsMC40LTAuOSwwLjgtMiwxLjJjMCwwLTMsMS02LjksMmMtMy44LDEtOC41LDItMTEuNCwyYy0yLjksMC03LjYtMS0xMS40LTJjLTMuOC0xLTYuOC0yLTYuOS0yCgkJYy0xLjEtMC40LTEuNy0wLjgtMi0xLjJjLTAuMy0wLjQtMC41LTAuOS0wLjUtMS45VjIxLjFjMC0wLjksMC4zLTEuNywwLjctMi4zYzAuNC0wLjUsMC45LTAuOCwxLjQtMC44YzAuMiwwLDEyLjMsMS40LDE4LjcsMS40CgkJQzM4LjQsMTkuNCw1MC43LDE4LjEsNTAuNywxOHoiLz4KCTxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik0xNi40LDI0LjJjLTAuNSwwLTAuOSwwLjQtMSwwLjljLTAuMSwwLjUsMC4zLDEuMSwwLjksMS4xYzAsMCwwLDAsMCwwYzAsMCwxMC4zLDEuNCwxNS43LDEuNAoJCWM1LjQsMCwxNS43LTEuNCwxNS43LTEuNGMwLjUtMC4xLDAuOS0wLjYsMC45LTEuMWMwLDAsMCwwLDAsMGMtMC4xLTAuNS0wLjYtMC45LTEuMS0wLjljMCwwLDAsMCwwLDBjMCwwLTEwLjQsMS40LTE1LjQsMS40CgkJYy01LDAtMTUuNC0xLjQtMTUuNC0xLjRDMTYuNSwyNC4yLDE2LjUsMjQuMiwxNi40LDI0LjJMMTYuNCwyNC4yeiIvPgoJPHBhdGggY2xhc3M9InN0MCIgZD0iTTE2LjQsMzFjLTAuNSwwLTAuOSwwLjQtMSwwLjljLTAuMSwwLjUsMC4zLDEuMSwwLjksMS4xYzAsMCwwLDAsMCwwYzAsMCwxMC4zLDEuNCwxNS43LDEuNAoJCWM1LjQsMCwxNS43LTEuNCwxNS43LTEuNGMwLjUtMC4xLDAuOS0wLjYsMC45LTEuMWMwLDAsMCwwLDAsMGMtMC4xLTAuNS0wLjYtMC45LTEuMS0wLjljMCwwLDAsMCwwLDBjMCwwLTEwLjQsMS40LTE1LjQsMS40CgkJYy01LDAtMTUuNC0xLjQtMTUuNC0xLjRDMTYuNSwzMSwxNi41LDMxLDE2LjQsMzF6Ii8+Cgk8cGF0aCBjbGFzcz0ic3QwIiBkPSJNMTYuNSwzNy44Yy0wLjUsMC0wLjksMC4zLTEsMC43Yy0wLjEsMC41LDAuMiwxLjEsMC43LDEuMmMwLDAsMCwwLDAsMGMwLDAsMi42LDAuNyw1LjksMS40czcuMiwxLjQsOS45LDEuNAoJCWMyLjgsMCw2LjctMC43LDkuOS0xLjRzNS45LTEuNCw1LjktMS40YzAuNS0wLjEsMC45LTAuNywwLjctMS4yYzAsMCwwLDAsMCwwYy0wLjEtMC41LTAuNy0wLjktMS4yLTAuN2MwLDAsMCwwLDAsMAoJCWMwLDAtMi42LDAuNy01LjgsMS4zYy0zLjIsMC43LTcuMSwxLjMtOS41LDEuM2MtMi40LDAtNi4zLTAuNy05LjUtMS4zcy01LjgtMS4zLTUuOC0xLjNDMTYuNiwzNy44LDE2LjYsMzcuOCwxNi41LDM3Ljh6Ii8+Cgk8cGF0aCBjbGFzcz0ic3QwIiBkPSJNMTAuMywyMC4xYy0yLjQsMC00LjUsMS41LTYsMy42UzIsMjguOCwyLDMyczAuOSw2LjEsMi4zLDguMnMzLjYsMy42LDYsMy42YzAuNiwwLDAtMC40LDAtMWMwLTAuNiwwLjYtMSwwLTEKCQljLTEuNiwwLTMuMS0xLTQuMy0yLjdTNCwzNC44LDQsMzJzMC44LTUuNCwyLTcuMXMyLjctMi43LDQuMy0yLjdjMC42LDAsMC0wLjQsMC0xQzEwLjMsMjAuNiwxMC44LDIwLjEsMTAuMywyMC4xeiIvPgoJPHBhdGggY2xhc3M9InN0MCIgZD0iTTUzLjgsMjAuMWMtMC42LDAsMCwwLjQsMCwxYzAsMC42LTAuNiwxLDAsMWMxLjYsMCwzLjEsMSw0LjMsMi43YzEuMiwxLjgsMiw0LjMsMiw3LjFzLTAuOCw1LjQtMiw3LjEKCQljLTEuMiwxLjgtMi43LDIuNy00LjMsMi43Yy0wLjYsMCwwLDAuNCwwLDFjMCwwLjYtMC42LDEsMCwxYzIuNCwwLDQuNS0xLjUsNi0zLjZTNjIsMzUuMiw2MiwzMnMtMC45LTYuMS0yLjMtOC4yCgkJUzU2LjIsMjAuMSw1My44LDIwLjF6Ii8+CjwvZz4KPC9zdmc+Cg==);
            background-size: 100%;
            display: inline-block;
            width: 2.35rem;
            height: 2.8rem;
        }

        .icon-4 {
            background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iODciIGhlaWdodD0iOTAiIHZpZXdCb3g9IjAgMCA4NyA5MCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTQ0LjMyNjMgMTQuMTE1MkM0My45NDk0IDE0Ljc4NiA0My4wMjE3IDE0Ljc4NiA0Mi42NDQ5IDE0LjExNTJMMzUuNTcxMiAxLjQ4NzM1QzM1LjE5NDMgMC44MTY1ODIgMzUuNjU4MiAwIDM2LjQxMTkgMEg1MC41ODgyQzUxLjM0MiAwIDUxLjgwNTggMC44MTY1ODIgNTEuNDI4OSAxLjQ4NzM1TDQ0LjMyNjMgMTQuMTE1MloiIGZpbGw9IiM3Nzg3OTgiLz4KPHBhdGggZD0iTTQyLjY0NDkgNzUuMTgzOUM0My4wMjE3IDc0LjUxMzIgNDMuOTQ5NCA3NC41MTMyIDQ0LjMyNjMgNzUuMTgzOUw1MS40Mjg5IDg3LjgxMThDNTEuODA1OCA4OC40ODI2IDUxLjM0MiA4OS4yOTkxIDUwLjU4ODIgODkuMjk5MUgzNi40MTE5QzM1LjY1ODIgODkuMjk5MSAzNS4xOTQzIDg4LjQ4MjYgMzUuNTcxMiA4Ny44MTE4TDQyLjY0NDkgNzUuMTgzOVoiIGZpbGw9IiM3Nzg3OTgiLz4KPHBhdGggZD0iTTY1LjExMjMgMjMuNjUxN0M2NC4zODc1IDIzLjg1NTkgNjMuNzQ5OCAyMy4xODUxIDYzLjkyMzcgMjIuNDI2OEw2Ny42MDU1IDguMzQwOEM2Ny44MDg0IDcuNjExNzEgNjguNzA3MSA3LjM0OTI0IDY5LjIyODkgNy45MDMzNUw3OS4yNTk2IDE4LjE5ODFDNzkuNzgxNCAxOC43NTIyIDc5LjU0OTUgMTkuNjU2MyA3OC44MjQ3IDE5Ljg2MDRMNjUuMTEyMyAyMy42NTE3WiIgZmlsbD0iIzc3ODc5OCIvPgo8cGF0aCBkPSJNMjEuODg3NyA2NS42NDc0QzIyLjYxMjQgNjUuNDQzMiAyMy4yNTAyIDY2LjExNCAyMy4wNzYzIDY2Ljg3MjNMMTkuMzk0NSA4MC45NTgzQzE5LjE5MTYgODEuNjg3NCAxOC4yOTI5IDgxLjk0OTkgMTcuNzcxMSA4MS4zOTU4TDcuNzQwNCA3MS4xMDFDNy4yMTg1NyA3MC41NDY5IDcuNDUwNDkgNjkuNjQyOCA4LjE3NTI1IDY5LjQzODdMMjEuODg3NyA2NS42NDc0WiIgZmlsbD0iIzc3ODc5OCIvPgo8cGF0aCBkPSJNNzMuMjU4NiA0NS41MjQ1QzcyLjYyMDggNDUuMTQ1MyA3Mi42MjA4IDQ0LjE4MjkgNzMuMjU4NiA0My44MDM4TDg1LjU1MDUgMzYuNTEyOUM4Ni4xODgzIDM2LjEzMzggODcuMDAwMSAzNi42MDA0IDg3LjAwMDEgMzcuMzU4N1Y1MS45NDA1Qzg3LjAwMDEgNTIuNjk4NyA4Ni4xODgzIDUzLjE5NDUgODUuNTUwNSA1Mi43ODYyTDczLjI1ODYgNDUuNTI0NVoiIGZpbGw9IiM3Nzg3OTgiLz4KPHBhdGggZD0iTTEzLjc0MTQgNDMuNzc0NkMxNC4zNzkyIDQ0LjE1MzggMTQuMzc5MiA0NS4xMTYyIDEzLjc0MTQgNDUuNDk1M0wxLjQ0OTUyIDUyLjc4NjJDMC44MTE3MjkgNTMuMTY1MyAwIDUyLjY5ODcgMCA1MS45NDA1VjM3LjM1ODZDMCAzNi42MDA0IDAuODExNzI5IDM2LjEwNDYgMS40NDk1MiAzNi41MTI5TDEzLjc0MTQgNDMuNzc0NloiIGZpbGw9IiM3Nzg3OTgiLz4KPHBhdGggZD0iTTYzLjk1MjcgNjYuODcyM0M2My43NDk4IDY2LjE0MzIgNjQuNDE2NSA2NS40NzI0IDY1LjE0MTMgNjUuNjQ3NEw3OC44NTM3IDY5LjQwOTVDNzkuNTc4NSA2OS42MTM2IDc5LjgxMDQgNzAuNTE3NyA3OS4yODg2IDcxLjA3MThMNjkuMjU3OSA4MS4zNjY2QzY4LjczNjEgODEuOTIwNyA2Ny44Mzc0IDgxLjY1ODIgNjcuNjM0NSA4MC45MjkxTDYzLjk1MjcgNjYuODcyM1oiIGZpbGw9IiM3Nzg3OTgiLz4KPHBhdGggZD0iTTIzLjA0NzIgMjIuNDI2OEMyMy4yNTAyIDIzLjE1NTkgMjIuNTgzNCAyMy44MjY3IDIxLjg1ODYgMjMuNjUxN0w4LjE0NjIgMTkuODg5NkM3LjQyMTQ0IDE5LjY4NTQgNy4xODk1MiAxOC43ODE0IDcuNzExMzUgMTguMjI3M0wxNy43NDIgNy45MzI0OUMxOC4yNjM4IDcuMzc4MzggMTkuMTYyNSA3LjY0MDg2IDE5LjM2NTUgOC4zNjk5NUwyMy4wNDcyIDIyLjQyNjhaIiBmaWxsPSIjNzc4Nzk4Ii8+CjxwYXRoIGQ9Ik0zMS40MjU3IDIwLjY3N0MzMi41MjczIDE5LjU2ODggMzMuOTc2OCAxOC45MjcyIDM1LjUxMzMgMTguOTI3Mkg1MS40NThDNTIuOTk0NSAxOC45MjcyIDU0LjQ3MyAxOS41Njg4IDU1LjU0NTYgMjAuNjc3TDY2LjgyMjkgMzIuMjU1QzY3LjkyNDUgMzMuMzYzMiA2OC41MzMzIDM0Ljg3OTcgNjguNTMzMyAzNi40NTQ2VjUyLjg0NDVDNjguNTMzMyA1NC40MTk0IDY3LjkyNDUgNTUuOTM1OSA2Ni44MjI5IDU3LjA0NDFMNTUuNTQ1NiA2OC42MjIxQzU0LjQ0NCA2OS43MzAzIDUyLjk5NDUgNzAuMzcxOSA1MS40NTggNzAuMzcxOUgzNS41MTMzQzMzLjk3NjggNzAuMzcxOSAzMi40OTgzIDY5LjczMDMgMzEuNDI1NyA2OC42MjIxTDIwLjE0ODQgNTcuMDQ0MUMxOS4wNDY4IDU1LjkzNTkgMTguNDM4IDU0LjQxOTQgMTguNDM4IDUyLjg0NDVWMzYuNDU0NkMxOC40MzggMzQuODc5NyAxOS4wNDY4IDMzLjM2MzIgMjAuMTQ4NCAzMi4yNTVMMzEuNDI1NyAyMC42NzdaIiBmaWxsPSIjRkYwMDAwIi8+CjxwYXRoIGQ9Ik00NC41MjkxIDYzLjc4MDlMNDQuMjM5MiA1NS4zMjM0QzQ0LjIzOTIgNTQuNTA2OSA0NC44NzcgNTQuNTA2OSA0Ni4zMjY1IDU0Ljc5ODVMNTIuOTY1MyA1Ni4xNEw1Mi4wOTU2IDUzLjkyMzZDNTEuODA1NyA1My4wNDg3IDUxLjc0NzcgNTIuNTIzNyA1Mi4zODU1IDUxLjkxMTNMNjAuMjQxOSA0NS4zMjAzTDU4Ljc5MjQgNDQuNDQ1NEM1OC4zNTc1IDQ0LjE1MzggNTguMzU3NSA0My43NzQ2IDU4LjU4OTQgNDMuMDQ1Nkw2MC4wMzkgMzguMTQ2MUw1Ni4yMTIyIDM4Ljk2MjZDNTUuMTM5NiAzOS4xOTYgNTQuODQ5NyAzOC45NjI2IDU0LjYxNzggMzguMzc5NEw1My41NDUxIDM2LjE2MjlMNDkuODA1NCA0MC41Mzc1QzQ5LjE2NzYgNDEuMzU0MSA0OC4yMTA5IDQwLjgyOTEgNDguNTAwOCAzOS42MzM0TDUwLjI5ODIgMzAuNTkyN0w0Ny41NDQxIDMyLjIyNThDNDcuMTA5MyAzMi41MTc1IDQ2LjYxNjQgMzIuNjA1IDQ2LjM4NDUgMzIuMDhMNDMuNDI3NSAyNi4wMTRMNDAuNDcwNSAzMi4wOEM0MC4xODA2IDMyLjYwNSAzOS43NDU3IDMyLjUxNzUgMzkuMzEwOSAzMi4yMjU4TDM2LjU1NjggMzAuNTkyN0wzOC4zNTQyIDM5LjYzMzRDMzguNjQ0MSA0MC44MjkxIDM3LjcxNjQgNDEuMzI0OSAzNy4wNDk2IDQwLjUzNzVMMzMuMzM4OSAzNi4xNjI5TDMyLjI2NjIgMzguMzc5NEMzMS45NzYzIDM4Ljk2MjYgMzEuNjg2NCAzOS4yODM0IDMwLjY3MTcgMzguOTYyNkwyNi44NDUgMzguMTQ2MUwyOC4yOTQ1IDQzLjA0NTZDMjguNDk3NSA0My43NzQ2IDI4LjQ5NzUgNDQuMTUzOCAyOC4wOTE2IDQ0LjQ0NTRMMjYuNjQyMSA0NS4zMjAzTDM0LjQ5ODUgNTEuOTExM0MzNS4xMzYzIDUyLjQ5NDYgMzUuMDc4MyA1My4xMDcgMzQuNzg4NCA1My45MjM2TDMzLjkxODcgNTYuMTRMNDAuNTU3NSA1NC43OTg1QzQyLjAwNyA1NC41MDY5IDQyLjY0NDggNTQuNTA2OSA0Mi42NDQ4IDU1LjMyMzRMNDIuMzU0OSA2My43ODA5SDQ0LjUyOTFaIiBmaWxsPSJ3aGl0ZSIvPgo8L3N2Zz4K);
            background-size: 100%;
            display: inline-block;
            width: 2.35rem;
            height: 2.4rem;
        }

        .icon-5 {
            background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iMjMiIHZpZXdCb3g9IjAgMCAzMCAyMyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTI1LjMyNzIgMC4wMDE3MTU5NkMyNC4zMzQ0IDAuMDI4NTcxNiAyMy4zOTA5IDAuNDQwMjc2IDIyLjY5NiAxLjE0OTg2TDkuODk4OTUgMTMuOTQ2OUw2LjQ3ODQzIDEwLjkzM0M2LjEwNDYzIDEwLjU3NDEgNS42NjE4NSAxMC4yOTQ4IDUuMTc2OTIgMTAuMTEyMkM0LjY5MTk5IDkuOTI5NDYgNC4xNzUwMiA5Ljg0NzE1IDMuNjU3MzQgOS44NzAyQzMuMTM5NjUgOS44OTMyNCAyLjYzMjAzIDEwLjAyMTIgMi4xNjUyNiAxMC4yNDYyQzEuNjk4NDggMTAuNDcxMyAxLjI4MjI2IDEwLjc4ODcgMC45NDE4MjggMTEuMTc5NEMwLjYwMTM5NyAxMS41NzAxIDAuMzQzODQ1IDEyLjAyNTkgMC4xODQ3ODEgMTIuNTE5MUMwLjAyNTcxNjMgMTMuMDEyMyAtMC4wMzE1NDcgMTMuNTMyNiAwLjAxNjQ2MjIgMTQuMDQ4NUMwLjA2NDQ3MTUgMTQuNTY0NSAwLjIxNjc1MyAxNS4wNjU0IDAuNDY0MDc3IDE1LjUyMDdDMC43MTE0MDEgMTUuOTc2MSAxLjA0ODYyIDE2LjM3NjUgMS40NTUyOCAxNi42OTc3TDcuNTc4NzQgMjIuMDU1N0M4LjMwNzk3IDIyLjY5MjQgOS4yNTEzNyAyMy4wMjkxIDEwLjIxODkgMjIuOTk4QzExLjE4NjUgMjIuOTY2OSAxMi4xMDY0IDIyLjU3MDQgMTIuNzkzMiAyMS44ODgyTDI4LjEwMTkgNi41Nzk2QzI4LjY1NzIgNi4wNDI4NCAyOS4wMzcxIDUuMzUwNjYgMjkuMTkxOCA0LjU5Mzk4QzI5LjM0NjQgMy44MzczIDI5LjI2ODYgMy4wNTE1MiAyOC45Njg0IDIuMzM5OTJDMjguNjY4MiAxLjYyODMyIDI4LjE1OTggMS4wMjQxNyAyNy41MDk5IDAuNjA2ODU3QzI2Ljg2MDEgMC4xODk1NDIgMjYuMDk5MiAtMC4wMjE0MDI5IDI1LjMyNzIgMC4wMDE3MTU5NloiIGZpbGw9IiMzOUI1NEEiLz4KPC9zdmc+Cg==);
            background-size: 100%;
            display: inline-block;
            width: 2.35rem;
            height: 1.8rem;
        }

        .txt-space {
            margin: 1.25rem 0rem 1rem 0rem;
        }

        .txt-header {
            font-family: Raleway, "Open Sans", Arial, sans-serif;
            font-size: 1.4375rem;
            font-weight: bold;
            line-height: 1.4;
        }
        .txt-header span {text-transform: lowercase;}

        .txt-normal {
            font-size: inherit;
            line-height: 1.6;
            margin-bottom: 1.25rem;
            text-rendering: optimizeLegibility;
        }

        .list-ordered {
            padding: 0 0px 0px 10px;
        }

        .small-link {
            font-size: 8px;
        }

        .footer {
            clear: both;
            position: relative;
            border-bottom: 8px solid rgb(17, 136, 71);
            width: 100%;
            box-sizing: border-box;
            bottom: 0px;
        }

        .footer-container {
            position: relative;
            margin: 2.5rem auto 2rem;
            max-width: 72rem;
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="printThis" runat="server">


            <header class="header-on">
                <div class="section">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10">
                                <img src="data:image/png;base64,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" alt="Government of Ontario homepage" />
                            </div>

                            <div class="col-md-2">
                                <p class="lan-fr">français</p>
                            </div>
                        </div>
                    </div>

                </div>
            </header>

            <div class="section-2 section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">

                            <p class="txt1">COVID-19 worker and employee screening result</p>
                            <h1 class="approval-txt">You can go</h1>

                            <div class="">
                                <div class="check-mark"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section-3 section">
                <div class="container">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="txt-space col-md-1"><span class="icon-1"></span></div>
                                <div class="txt-space col-md-11">
                                    <p class="txt-header">
                                        Valid<br>
                                        from  <span id="fromTimeHTML" runat="server">7:54 p.m.</span>  to <span id="toTimeHTML" runat="server">11:59 p.m.</span>
                                    </p>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="txt-normal">This result is no longer valid if your situation changes during the day (for example, you start experiencing symptoms).</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="txt-space col-md-1"><span class="icon-2"></span></div>
                                <div class="txt-space col-md-11">
                                    <p class="txt-header">Next steps</p>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ol class="txt-normal">
                                                <li class="list-ordered">Tell your employer about this result (for example, send it to them before going to work or show it on the way in)</li>
                                                <li class="list-ordered"><a tabindex="0" class="approved__Hyperlink-sc-1bfysi9-12 ckzqbR retake-test">Retake this screening</a> every day before going to work</li>
                                            </ol>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="txt-space col-md-1"><span class="icon-3"></span></div>
                                <div class="txt-space col-md-11">
                                    <p class="txt-header">Health and safety tips</p>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="txt-normal">
                                                <li>Keep a distance of at least 2 metres from people you do not live with</li>
                                                <li>Make sure you wear a face covering or mask while indoors (and outdoors when you cannot physically distance) and that it covers your mouth, nose, and chin</li>
                                                <li>Wash or sanitize your hands often</li>
                                            </ul>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="txt-space col-md-1"><span class="icon-4"></span></div>
                                <div class="txt-space col-md-11">
                                    <p class="txt-header">Health and safety tips</p>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <p class="txt-normal">
                                                Protect yourself and your community. Get a phone alert if you have been exposed to COVID-19 and let others know if you test positive, without sharing any personal information.  
                                            </p>
                                            <p style="margin-bottom: 0; line-height: 1px;"><a href="http://ontario.ca/covidalert" target="_blank" rel="noopener" style="font-weight: bolder;">Learn how it works</a></p>
                                            <p><a href="http://ontario.ca/covidalert" class="small-link">(http://ontario.ca/covidalert)</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>







                </div>
            </div>

            <footer class="footer">
                <div class="footer-container section">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10">
                                <span class="icon-5"></span>
                            </div>

                            <div class="col-md-2">
                                <img src="data:image/png;base64,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" alt="Government of Ontario homepage" width="131" />
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </form>
</body>
</html>
