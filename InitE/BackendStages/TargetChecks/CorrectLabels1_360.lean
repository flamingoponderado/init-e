import InitE.BackendStages.TargetChecks.CorrectLabels0_360
import InitE.BackendStages.TargetChecks.CorrectEncode0_360
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_360
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_360_eq : LabToTarget.sectionLabels 246684 Reencode0_360.lines [] = (246936, localLabels1_360) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 246684 246936 riscvConfig.encode
    Initial360.lines Reencode0_360.lines [] Reencode0_360_eq).trans
    (localLabels0_360_eq.trans (by kernel_rfl))
#print axioms localLabels1_360_eq
end InitE.BackendStages.TargetChecks.Correct
