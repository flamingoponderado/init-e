import InitE.BackendStages.TargetChecks.Data1_726
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_726_eq : LabToTarget.sectionLabels 715652 Reencode0_726.lines [] = (715664, localLabels1_726) := by
  with_unfolding_all rfl
#print axioms localLabels1_726_eq
end InitE.BackendStages.TargetChecks
