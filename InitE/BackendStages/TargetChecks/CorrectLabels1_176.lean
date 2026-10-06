import InitE.BackendStages.TargetChecks.CorrectLabels0_176
import InitE.BackendStages.TargetChecks.CorrectEncode0_176
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_176
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_176_eq : LabToTarget.sectionLabels 53992 Reencode0_176.lines [] = (54416, localLabels1_176) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 53992 54416 riscvConfig.encode
    Initial176.lines Reencode0_176.lines [] Reencode0_176_eq).trans
    (localLabels0_176_eq.trans (by kernel_rfl))
#print axioms localLabels1_176_eq
end InitE.BackendStages.TargetChecks.Correct
