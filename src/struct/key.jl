mutable struct Key
    A::Bool
    B::Bool
    C::Bool
    U::Bool
    R::Bool
    D::Bool
    L::Bool
end

Key(key) = Key(key.A, key.B, key.C, key.U, key.R, key.D, key.L)
Key() = Key(false, false, false, false, false, false, false)
