import InitE.BackendStages.TargetChecks.CorrectLabels0_269
import InitE.BackendStages.TargetChecks.CorrectEncode0_269
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_269
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_269_eq : LabToTarget.sectionLabels 167060 Reencode0_269.lines [] = (168228, localLabels1_269) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 167060 168228 riscvConfig.encode
    Initial269.lines Reencode0_269.lines [] Reencode0_269_eq).trans
    (localLabels0_269_eq.trans (by kernel_rfl))
#print axioms localLabels1_269_eq
end InitE.BackendStages.TargetChecks.Correct
