import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure GradientLikeSystem where
  domain : Type u
  topology : TopologicalSpace domain
  gradientLikeVectorField : domain → domain
  isolatedCriticalSet : domain → Prop
  localLyapunovFunction : domain → ℝ
  gradientDominanceInequality : Prop
  isolatedCriticalSetNonempty : Prop
  localLyapunovPositiveDefinite : Prop

def gradient_like_system_consistent (G : GradientLikeSystem) : Prop :=
  G.gradientDominanceInequality ∧ G.isolatedCriticalSetNonempty ∧ G.localLyapunovPositiveDefinite

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse