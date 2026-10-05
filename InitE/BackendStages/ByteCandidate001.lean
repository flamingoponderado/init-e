import InitE.BackendStages.BytePiecesData65
import InitE.BackendStages.BytePiecesData66
import InitE.BackendStages.BytePiecesData67
import InitE.BackendStages.BytePiecesData68
import InitE.BackendStages.BytePiecesData69
import InitE.BackendStages.BytePiecesData70
import InitE.BackendStages.BytePiecesData71
import InitE.BackendStages.BytePiecesData72
import InitE.BackendStages.BytePiecesData73
import InitE.BackendStages.BytePiecesData74
import InitE.BackendStages.BytePiecesData75
import InitE.BackendStages.BytePiecesData76
import InitE.BackendStages.BytePiecesData77
import InitE.BackendStages.BytePiecesData78
import InitE.BackendStages.BytePiecesData79
import InitECandidate.Bytes001
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate001_eq : InitECandidate.bytes001 = [piece65_1, piece66_0, piece67_0, piece68_0, piece69_0, piece70_0, piece71_0, piece72_0, piece73_0, piece74_0, piece75_0, piece76_0, piece77_0, piece78_0, piece79_0].flatten := by
  rw [piece65_1_eq, piece66_0_eq, piece67_0_eq, piece68_0_eq, piece69_0_eq, piece70_0_eq, piece71_0_eq, piece72_0_eq, piece73_0_eq, piece74_0_eq, piece75_0_eq, piece76_0_eq, piece77_0_eq, piece78_0_eq, piece79_0_eq]
  rfl
#print axioms candidate001_eq
end InitE.BackendStages.BytePieces
