import Tools.GenSmallStages
import InitE.SmallStages.Oracles705
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 705 InitE.WordStages.source705.2.1 InitE.WordStages.source705.2.2 InitE.SmallStages.Oracles705.oracle705
