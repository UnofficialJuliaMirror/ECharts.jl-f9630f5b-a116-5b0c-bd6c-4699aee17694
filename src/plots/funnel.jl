function funnel{T <: Real}(names::AbstractVector, values::AbstractVector{T};
            legend::Bool = false,
            kwargs...)

    ec = newplot(kwargs, ec_charttype = "funnel")

    ec.series = [Series(name = "Series 1",
                        _type = "funnel",
                        data =  arrayofdicts(value = values, name = names)
                       )
                ]

    #Add legend if requested
    legend? legend!(ec) : nothing

    return ec

end
