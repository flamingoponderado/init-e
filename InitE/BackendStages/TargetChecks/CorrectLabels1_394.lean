import InitE.BackendStages.TargetChecks.CorrectLabels0_394
import InitE.BackendStages.TargetChecks.CorrectEncode0_394
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_394
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_394_eq : LabToTarget.sectionLabels 273288 Reencode0_394.lines [] = (273648, localLabels1_394) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 273288 273648 riscvConfig.encode
    Initial394.lines Reencode0_394.lines [] Reencode0_394_eq).trans
    (localLabels0_394_eq.trans (by kernel_rfl))
#print axioms localLabels1_394_eq
end InitE.BackendStages.TargetChecks.Correct
