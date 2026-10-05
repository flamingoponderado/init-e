import InitE.BackendStages.TargetChecks.CorrectData1_328
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_328_eq : LabToTarget.sectionLabels 224968 Reencode0_328.lines [] = (225012, localLabels1_328) := by
  with_unfolding_all rfl
#print axioms localLabels1_328_eq
end InitE.BackendStages.TargetChecks.Correct
