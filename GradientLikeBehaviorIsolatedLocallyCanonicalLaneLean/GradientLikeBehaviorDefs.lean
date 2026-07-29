import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure GradientSystem where
  stateSpace : Type u
  gradientFunction : stateSpace → ℝ
  isolatedCriticalPoint : stateSpace
  isolatedCriticalValue : ℝ
  gradientVanishesAtIsolated : Prop
  uniquenessRadius : ℝ
  uniquenessRadiusPos : uniquenessRadius > 0

structure LocalBehavior where
  system : GradientSystem
  localLyapunovFunction : system.stateSpace → ℝ
  strictMinimumAtIsolated : Prop
  basinEstimate : ℝ
  basinEstimatePos : basinEstimate > 0

def GradientLocalClosure (L : LocalBehavior) : Prop :=
  L.strictMinimumAtIsolated ∧ L.basinEstimatePos

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse