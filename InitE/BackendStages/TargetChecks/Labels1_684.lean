import InitE.BackendStages.TargetChecks.Data1_684
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_684_eq : LabToTarget.sectionLabels 602044 Reencode0_684.lines [] = (602072, localLabels1_684) := by
  with_unfolding_all rfl
#print axioms localLabels1_684_eq
end InitE.BackendStages.TargetChecks
