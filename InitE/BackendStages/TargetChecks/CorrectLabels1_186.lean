import InitE.BackendStages.TargetChecks.CorrectLabels0_186
import InitE.BackendStages.TargetChecks.CorrectEncode0_186
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_186
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_186_eq : LabToTarget.sectionLabels 61144 Reencode0_186.lines [] = (61372, localLabels1_186) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 61144 61372 riscvConfig.encode
    Initial186.lines Reencode0_186.lines [] Reencode0_186_eq).trans
    (localLabels0_186_eq.trans (by kernel_rfl))
#print axioms localLabels1_186_eq
end InitE.BackendStages.TargetChecks.Correct
