import InitE.BackendStages.TargetChecks.CorrectLabels0_73
import InitE.BackendStages.TargetChecks.CorrectEncode0_73
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_73
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_73_eq : LabToTarget.sectionLabels 7076 Reencode0_73.lines [] = (7112, localLabels1_73) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 7076 7112 riscvConfig.encode
    Initial73.lines Reencode0_73.lines [] Reencode0_73_eq).trans
    (localLabels0_73_eq.trans (by kernel_rfl))
#print axioms localLabels1_73_eq
end InitE.BackendStages.TargetChecks.Correct
