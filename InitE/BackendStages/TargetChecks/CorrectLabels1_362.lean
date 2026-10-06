import InitE.BackendStages.TargetChecks.CorrectLabels0_362
import InitE.BackendStages.TargetChecks.CorrectEncode0_362
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_362
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_362_eq : LabToTarget.sectionLabels 246988 Reencode0_362.lines [] = (247484, localLabels1_362) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 246988 247484 riscvConfig.encode
    Initial362.lines Reencode0_362.lines [] Reencode0_362_eq).trans
    (localLabels0_362_eq.trans (by kernel_rfl))
#print axioms localLabels1_362_eq
end InitE.BackendStages.TargetChecks.Correct
