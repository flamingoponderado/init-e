import InitE.BackendStages.TargetChecks.CorrectLabels0_153
import InitE.BackendStages.TargetChecks.CorrectEncode0_153
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_153
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_153_eq : LabToTarget.sectionLabels 38696 Reencode0_153.lines [] = (40140, localLabels1_153) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 38696 40140 riscvConfig.encode
    Initial153.lines Reencode0_153.lines [] Reencode0_153_eq).trans
    (localLabels0_153_eq.trans (by kernel_rfl))
#print axioms localLabels1_153_eq
end InitE.BackendStages.TargetChecks.Correct
