import InitE.BackendStages.TargetChecks.CorrectLabels0_420
import InitE.BackendStages.TargetChecks.CorrectEncode0_420
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_420
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_420_eq : LabToTarget.sectionLabels 286656 Reencode0_420.lines [] = (287012, localLabels1_420) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 286656 287012 riscvConfig.encode
    Initial420.lines Reencode0_420.lines [] Reencode0_420_eq).trans
    (localLabels0_420_eq.trans (by kernel_rfl))
#print axioms localLabels1_420_eq
end InitE.BackendStages.TargetChecks.Correct
