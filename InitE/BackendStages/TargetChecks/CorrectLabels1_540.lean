import InitE.BackendStages.TargetChecks.CorrectLabels0_540
import InitE.BackendStages.TargetChecks.CorrectEncode0_540
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_540
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_540_eq : LabToTarget.sectionLabels 384876 Reencode0_540.lines [] = (385008, localLabels1_540) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 384876 385008 riscvConfig.encode
    Initial540.lines Reencode0_540.lines [] Reencode0_540_eq).trans
    (localLabels0_540_eq.trans (by kernel_rfl))
#print axioms localLabels1_540_eq
end InitE.BackendStages.TargetChecks.Correct
