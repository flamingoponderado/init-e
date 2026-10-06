import InitE.BackendStages.TargetChecks.CorrectLabels0_534
import InitE.BackendStages.TargetChecks.CorrectEncode0_534
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_534
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_534_eq : LabToTarget.sectionLabels 378456 Reencode0_534.lines [] = (379340, localLabels1_534) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 378456 379340 riscvConfig.encode
    Initial534.lines Reencode0_534.lines [] Reencode0_534_eq).trans
    (localLabels0_534_eq.trans (by kernel_rfl))
#print axioms localLabels1_534_eq
end InitE.BackendStages.TargetChecks.Correct
