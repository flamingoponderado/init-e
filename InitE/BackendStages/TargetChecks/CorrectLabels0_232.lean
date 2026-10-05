import InitE.BackendStages.TargetChecks.CorrectData0_232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_232_eq : LabToTarget.sectionLabels 98512 Initial232.lines [] = (100024, localLabels0_232) := by
  with_unfolding_all rfl
#print axioms localLabels0_232_eq
end InitE.BackendStages.TargetChecks.Correct
