import InitE.BackendStages.TargetChecks.CorrectData1_402
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_402_eq : LabToTarget.sectionLabels 276152 Reencode0_402.lines [] = (276700, localLabels1_402) := by
  with_unfolding_all rfl
#print axioms localLabels1_402_eq
end InitE.BackendStages.TargetChecks.Correct
