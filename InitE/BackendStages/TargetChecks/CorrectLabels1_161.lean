import InitE.BackendStages.TargetChecks.CorrectLabels0_161
import InitE.BackendStages.TargetChecks.CorrectEncode0_161
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_161
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_161_eq : LabToTarget.sectionLabels 43844 Reencode0_161.lines [] = (46556, localLabels1_161) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 43844 46556 riscvConfig.encode
    Initial161.lines Reencode0_161.lines [] Reencode0_161_eq).trans
    (localLabels0_161_eq.trans (by kernel_rfl))
#print axioms localLabels1_161_eq
end InitE.BackendStages.TargetChecks.Correct
