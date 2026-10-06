import InitE.BackendStages.TargetChecks.CorrectLabels0_112
import InitE.BackendStages.TargetChecks.CorrectEncode0_112
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_112_eq : LabToTarget.sectionLabels 13988 Reencode0_112.lines [] = (14016, localLabels1_112) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 13988 14016 riscvConfig.encode
    Initial112.lines Reencode0_112.lines [] Reencode0_112_eq).trans
    (localLabels0_112_eq.trans (by kernel_rfl))
#print axioms localLabels1_112_eq
end InitE.BackendStages.TargetChecks.Correct
