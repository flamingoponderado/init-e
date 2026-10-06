import InitE.BackendStages.TargetChecks.CorrectLabels0_178
import InitE.BackendStages.TargetChecks.CorrectEncode0_178
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_178
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_178_eq : LabToTarget.sectionLabels 54832 Reencode0_178.lines [] = (54852, localLabels1_178) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 54832 54852 riscvConfig.encode
    Initial178.lines Reencode0_178.lines [] Reencode0_178_eq).trans
    (localLabels0_178_eq.trans (by kernel_rfl))
#print axioms localLabels1_178_eq
end InitE.BackendStages.TargetChecks.Correct
