import InitE.BackendStages.TargetChecks.CorrectData0_604
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_604_eq : LabToTarget.sectionLabels 471060 Initial604.lines [] = (472112, localLabels0_604) := by
  with_unfolding_all rfl
#print axioms localLabels0_604_eq
end InitE.BackendStages.TargetChecks.Correct
