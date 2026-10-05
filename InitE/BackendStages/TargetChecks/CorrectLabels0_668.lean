import InitE.BackendStages.TargetChecks.CorrectData0_668
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_668_eq : LabToTarget.sectionLabels 593372 Initial668.lines [] = (593384, localLabels0_668) := by
  with_unfolding_all rfl
#print axioms localLabels0_668_eq
end InitE.BackendStages.TargetChecks.Correct
