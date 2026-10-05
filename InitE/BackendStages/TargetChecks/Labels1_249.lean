import InitE.BackendStages.TargetChecks.Data1_249
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_249_eq : LabToTarget.sectionLabels 139248 Reencode0_249.lines [] = (139988, localLabels1_249) := by
  with_unfolding_all rfl
#print axioms localLabels1_249_eq
end InitE.BackendStages.TargetChecks
