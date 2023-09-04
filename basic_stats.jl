using RegressionTables, DataFrames, FixedEffectModels, RDatasets


df = dataset("datasets","iris")

df[!,:SpeciesDummy] = string.(df[:,:Species])

rr1 = reg(df, @formula(SepalLength ~ SepalWidth + fe(SpeciesDummy)))
rr2 = reg(df, @formula(SepalLength ~ SepalWidth + PetalLength + fe(SpeciesDummy)))
rr3 = reg(df, @formula(SepalLength ~ SepalWidth + PetalLength + PetalWidth + fe(SpeciesDummy)))
rr4 = reg(df, @formula(SepalWidth ~ SepalLength + PetalLength + PetalWidth + fe(SpeciesDummy)))

regtable(rr1,rr2,rr3,rr4)


