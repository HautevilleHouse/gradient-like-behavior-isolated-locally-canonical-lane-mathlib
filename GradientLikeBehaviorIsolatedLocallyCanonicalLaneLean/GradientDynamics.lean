import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure GradientFlow {M : GradientLikeManifold} where
  timeDomain : Type
  flowMap : timeDomain → M.carrier → M.carrier
  continuous : Continuous (Function.uncurry flowMap)
  gradientDescent : Prop

def isolatedLocalMinima (G : GradientFlow) : Prop :=
  ∀ x : G.fM.carrier, x ∈ G.fM.isolatedPointSet →
    (∀ t : G.timeDomain, G.flowMap t x = x)

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse