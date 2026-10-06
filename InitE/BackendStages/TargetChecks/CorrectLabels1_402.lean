import InitE.BackendStages.TargetChecks.CorrectLabels0_402
import InitE.BackendStages.TargetChecks.CorrectEncode0_402
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_402
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_402_eq : LabToTarget.sectionLabels 276152 Reencode0_402.lines [] = (276700, localLabels1_402) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 276152 276700 riscvConfig.encode
    Initial402.lines Reencode0_402.lines [] Reencode0_402_eq).trans
    (localLabels0_402_eq.trans (by kernel_rfl))
#print axioms localLabels1_402_eq
end InitE.BackendStages.TargetChecks.Correct
