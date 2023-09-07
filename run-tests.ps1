Get-ChildItem "test" | ?{ $_.PsIsContainer } | %{
    pushd "test\$_"
    & dotnet test --logger:trx
    popd
}