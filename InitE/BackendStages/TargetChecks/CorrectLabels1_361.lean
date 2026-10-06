import InitE.BackendStages.TargetChecks.CorrectLabels0_361
import InitE.BackendStages.TargetChecks.CorrectEncode0_361
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_361_eq : LabToTarget.sectionLabels 246936 Reencode0_361.lines [] = (246988, localLabels1_361) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 246936 246988 riscvConfig.encode
    Initial361.lines Reencode0_361.lines [] Reencode0_361_eq).trans
    (localLabels0_361_eq.trans (by kernel_rfl))
#print axioms localLabels1_361_eq
end InitE.BackendStages.TargetChecks.Correct
