import InitE.BackendStages.TargetChecks.CorrectLabels0_415
import InitE.BackendStages.TargetChecks.CorrectEncode0_415
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_415_eq : LabToTarget.sectionLabels 284424 Reencode0_415.lines [] = (284620, localLabels1_415) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 284424 284620 riscvConfig.encode
    Initial415.lines Reencode0_415.lines [] Reencode0_415_eq).trans
    (localLabels0_415_eq.trans (by kernel_rfl))
#print axioms localLabels1_415_eq
end InitE.BackendStages.TargetChecks.Correct
