import Tools.GenSmallStages
import InitE.SmallStages.Oracles536
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 536 InitE.WordStages.source536.2.1 InitE.WordStages.source536.2.2 InitE.SmallStages.Oracles536.oracle536
