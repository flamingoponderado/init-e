import InitE.BackendStages.TargetChecks.CorrectData0_813
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_813_eq : LabToTarget.sectionLabels 856312 Initial813.lines [] = (864420, localLabels0_813) := by
  with_unfolding_all rfl
#print axioms localLabels0_813_eq
end InitE.BackendStages.TargetChecks.Correct
