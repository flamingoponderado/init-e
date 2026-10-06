import InitE.BackendStages.TargetChecks.CorrectLabels0_494
import InitE.BackendStages.TargetChecks.CorrectEncode0_494
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_494
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_494_eq : LabToTarget.sectionLabels 347384 Reencode0_494.lines [] = (347452, localLabels1_494) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 347384 347452 riscvConfig.encode
    Initial494.lines Reencode0_494.lines [] Reencode0_494_eq).trans
    (localLabels0_494_eq.trans (by kernel_rfl))
#print axioms localLabels1_494_eq
end InitE.BackendStages.TargetChecks.Correct
