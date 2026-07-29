import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure IsolatedCriticalPoint where
  point : Type u
  neighborhoodLocalChart : Type v
  gradientVanishes : Prop
  hessianNondegenerate : Prop
  isolatedInTime : Prop

def isolated_critical_point_admissible (C : IsolatedCriticalPoint) : Prop :=
  C.gradientVanishes ∧ C.hessianNondegenerate ∧ C.isolatedInTime

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse