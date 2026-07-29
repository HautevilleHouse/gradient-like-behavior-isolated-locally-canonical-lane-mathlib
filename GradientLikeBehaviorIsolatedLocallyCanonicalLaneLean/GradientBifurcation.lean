import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure BifurcationParameter where
  paramType : Type
  paramSpace : TopologicalSpace paramType

def bifurcationPoint (M : GradientLikeManifold) (P : BifurcationParameter) : Prop :=
  ∃ p : P.paramType, ∀ (x : M.carrier), x ∈ M.isolatedPointSet →
    (∀ ε > 0, ∃ q ∈ Set.Ioo (p - ε) (p + ε), gradientLikeBehavior (changeParam M P q))

def changeParam (M : GradientLikeManifold) (P : BifurcationParameter) (q : P.paramType) : GradientLikeManifold := M

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse