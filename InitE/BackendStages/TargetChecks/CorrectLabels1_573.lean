import InitE.BackendStages.TargetChecks.CorrectData1_573
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_573_eq : LabToTarget.sectionLabels 417768 Reencode0_573.lines [] = (418336, localLabels1_573) := by
  with_unfolding_all rfl
#print axioms localLabels1_573_eq
end InitE.BackendStages.TargetChecks.Correct
