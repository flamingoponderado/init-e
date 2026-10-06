import InitE.BackendStages.TargetChecks.CorrectLabels0_398
import InitE.BackendStages.TargetChecks.CorrectEncode0_398
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_398
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_398_eq : LabToTarget.sectionLabels 274492 Reencode0_398.lines [] = (274688, localLabels1_398) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 274492 274688 riscvConfig.encode
    Initial398.lines Reencode0_398.lines [] Reencode0_398_eq).trans
    (localLabels0_398_eq.trans (by kernel_rfl))
#print axioms localLabels1_398_eq
end InitE.BackendStages.TargetChecks.Correct
