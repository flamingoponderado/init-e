import InitE.BackendStages.TargetChecks.CorrectData0_289
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_289_eq : LabToTarget.sectionLabels 192360 Initial289.lines [] = (193412, localLabels0_289) := by
  with_unfolding_all rfl
#print axioms localLabels0_289_eq
end InitE.BackendStages.TargetChecks.Correct
