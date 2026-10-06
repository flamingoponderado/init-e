import InitE.BackendStages.TargetChecks.CorrectLabels0_249
import InitE.BackendStages.TargetChecks.CorrectEncode0_249
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_249
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_249_eq : LabToTarget.sectionLabels 139248 Reencode0_249.lines [] = (139988, localLabels1_249) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 139248 139988 riscvConfig.encode
    Initial249.lines Reencode0_249.lines [] Reencode0_249_eq).trans
    (localLabels0_249_eq.trans (by kernel_rfl))
#print axioms localLabels1_249_eq
end InitE.BackendStages.TargetChecks.Correct
