import Tools.GenSmallStages
import InitE.SmallStages.Oracles721
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 721 InitE.WordStages.source721.2.1 InitE.WordStages.source721.2.2 InitE.SmallStages.Oracles721.oracle721
