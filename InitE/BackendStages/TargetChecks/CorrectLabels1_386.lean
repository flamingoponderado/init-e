import InitE.BackendStages.TargetChecks.CorrectData1_386
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_386_eq : LabToTarget.sectionLabels 265676 Reencode0_386.lines [] = (266772, localLabels1_386) := by
  with_unfolding_all rfl
#print axioms localLabels1_386_eq
end InitE.BackendStages.TargetChecks.Correct
