import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure GradientLikeManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimension : ℕ
  isolatedPointSet : Set carrier

def gradientLikeBehavior (M : GradientLikeManifold) : Prop :=
  ∃ (f : M.carrier → ℝ), ContinuousOn f (Set.univ) ∧
    ∀ x : M.carrier, x ∈ M.isolatedPointSet → (∃ U ∈ 𝓝 x, ∀ y ∈ U \ {x}, f y < f x ∨ f y > f x)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse