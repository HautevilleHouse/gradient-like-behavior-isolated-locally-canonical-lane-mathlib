import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean

structure MorseIndexData where
  criticalPointType : String
  morseIndex : Nat
  localChartDefined : Prop

structure GradientLikeFlowPackage where
  flow : Type u → Type u
  lyapunovFunction : Type u → Prop
  criticalPointSet : Type u → Prop
  gradientLikeCondition : Prop
  isolatedLocalBehavior : Prop

end GradientLikeBehaviorIsolatedLocallyCanonicalLaneLean
end HautevilleHouse
