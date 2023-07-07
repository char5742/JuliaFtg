mutable struct Key
    A::Bool
    B::Bool
    C::Bool
    U::Bool
    R::Bool
    D::Bool
    L::Bool
    Key(key) = new(key.A, key.B, key.C, key.U, key.R, key.D, key.L)
    Key() = new(false, false, false, false, false, false, false)
end

