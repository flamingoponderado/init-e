import InitE.BackendStages.TargetChecks.CorrectLabels0_214
import InitE.BackendStages.TargetChecks.CorrectEncode0_214
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_214
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_214_eq : LabToTarget.sectionLabels 77164 Reencode0_214.lines [] = (80868, localLabels1_214) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 77164 80868 riscvConfig.encode
    Initial214.lines Reencode0_214.lines [] Reencode0_214_eq).trans
    (localLabels0_214_eq.trans (by kernel_rfl))
#print axioms localLabels1_214_eq
end InitE.BackendStages.TargetChecks.Correct
