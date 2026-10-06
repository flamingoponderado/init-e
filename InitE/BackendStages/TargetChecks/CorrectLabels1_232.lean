import InitE.BackendStages.TargetChecks.CorrectLabels0_232
import InitE.BackendStages.TargetChecks.CorrectEncode0_232
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_232_eq : LabToTarget.sectionLabels 98512 Reencode0_232.lines [] = (100024, localLabels1_232) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 98512 100024 riscvConfig.encode
    Initial232.lines Reencode0_232.lines [] Reencode0_232_eq).trans
    (localLabels0_232_eq.trans (by kernel_rfl))
#print axioms localLabels1_232_eq
end InitE.BackendStages.TargetChecks.Correct
