import InitE.BackendStages.TargetChecks.CorrectLabels0_268
import InitE.BackendStages.TargetChecks.CorrectEncode0_268
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_268
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_268_eq : LabToTarget.sectionLabels 165668 Reencode0_268.lines [] = (167060, localLabels1_268) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 165668 167060 riscvConfig.encode
    Initial268.lines Reencode0_268.lines [] Reencode0_268_eq).trans
    (localLabels0_268_eq.trans (by kernel_rfl))
#print axioms localLabels1_268_eq
end InitE.BackendStages.TargetChecks.Correct
